Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOv9E9MzcWlQfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 21:15:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 555EF5CF41
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 21:15:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892C710E1B8;
	Wed, 21 Jan 2026 20:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32BF310E1B5;
 Wed, 21 Jan 2026 20:15:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1774925453783519992=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jan 2026 20:15:12 -0000
Message-ID: <176902651219.179549.8438038811122577105@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260121135318.651622-1-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-1-dev@lankhorst.se>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 555EF5CF41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1774925453783519992==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev10)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17866 -> Patchwork_159035v10
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159035v10 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v10, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/index.html

Participating hosts (42 -> 39)
------------------------------

  Additional (1): fi-ilk-650 
  Missing    (4): bat-dg2-13 bat-dg1-6 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v10:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests:
    - fi-ilk-650:         NOTRUN -> [ABORT][1] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-ilk-650/igt@dmabuf@all-tests.html

  * igt@gem_exec_fence@basic-busy:
    - bat-jsl-1:          [PASS][2] -> [ABORT][3] +1 other test abort
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-1/igt@gem_exec_fence@basic-busy.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-1/igt@gem_exec_fence@basic-busy.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [PASS][6] -> [ABORT][7] +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-hsw-4770/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-hsw-4770/igt@i915_selftest@live.html
    - fi-ivb-3770:        [PASS][8] -> [ABORT][9] +1 other test abort
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-ivb-3770/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-ivb-3770/igt@i915_selftest@live.html
    - bat-mtlp-8:         [PASS][10] -> [ABORT][11] +1 other test abort
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-8/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][12] -> [ABORT][13] +1 other test abort
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-8/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         [PASS][14] -> [ABORT][15] +1 other test abort
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adls-6/igt@i915_selftest@live.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adls-6/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][16] -> [ABORT][17] +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-3/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-3/igt@i915_selftest@live.html
    - fi-glk-j4005:       [PASS][18] -> [ABORT][19] +1 other test abort
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-glk-j4005/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-glk-j4005/igt@i915_selftest@live.html
    - bat-rpls-4:         [PASS][20] -> [ABORT][21] +1 other test abort
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rpls-4/igt@i915_selftest@live.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rpls-4/igt@i915_selftest@live.html
    - bat-jsl-5:          [PASS][22] -> [ABORT][23] +1 other test abort
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-5/igt@i915_selftest@live.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-5/igt@i915_selftest@live.html
    - bat-arls-5:         [PASS][24] -> [ABORT][25] +1 other test abort
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-5/igt@i915_selftest@live.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-5/igt@i915_selftest@live.html
    - bat-arlh-2:         [PASS][26] -> [ABORT][27] +1 other test abort
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-2/igt@i915_selftest@live.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-2/igt@i915_selftest@live.html
    - fi-rkl-11600:       [PASS][28] -> [ABORT][29] +1 other test abort
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-rkl-11600/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-rkl-11600/igt@i915_selftest@live.html
    - fi-cfl-guc:         [PASS][30] -> [ABORT][31] +1 other test abort
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-guc/igt@i915_selftest@live.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-guc/igt@i915_selftest@live.html
    - fi-kbl-x1275:       [PASS][32] -> [ABORT][33] +1 other test abort
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-x1275/igt@i915_selftest@live.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-x1275/igt@i915_selftest@live.html
    - fi-cfl-8109u:       [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live.html
    - fi-skl-6600u:       [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-mtlp-8:         [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-8/igt@i915_selftest@live@active.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-8/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@client:
    - bat-adls-6:         [PASS][40] -> [DMESG-WARN][41] +4 other tests dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adls-6/igt@i915_selftest@live@client.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adls-6/igt@i915_selftest@live@client.html
    - bat-rpls-4:         [PASS][42] -> [DMESG-WARN][43] +1 other test dmesg-warn
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rpls-4/igt@i915_selftest@live@client.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rpls-4/igt@i915_selftest@live@client.html
    - fi-kbl-7567u:       [PASS][44] -> [ABORT][45] +1 other test abort
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-7567u/igt@i915_selftest@live@client.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-7567u/igt@i915_selftest@live@client.html
    - fi-cfl-8109u:       [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live@client.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live@client.html
    - fi-tgl-1115g4:      [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-tgl-1115g4/igt@i915_selftest@live@client.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-tgl-1115g4/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - fi-cfl-8109u:       [PASS][50] -> [DMESG-WARN][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live@coherency.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live@coherency.html
    - bat-rplp-1:         [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rplp-1/igt@i915_selftest@live@coherency.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rplp-1/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@dmabuf:
    - bat-jsl-5:          [PASS][54] -> [DMESG-WARN][55] +1 other test dmesg-warn
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-5/igt@i915_selftest@live@dmabuf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-5/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@evict:
    - fi-kbl-7567u:       [PASS][56] -> [DMESG-WARN][57] +2 other tests dmesg-warn
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-7567u/igt@i915_selftest@live@evict.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-7567u/igt@i915_selftest@live@evict.html
    - bat-jsl-5:          [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-5/igt@i915_selftest@live@evict.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-5/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-skl-6600u:       [PASS][60] -> [DMESG-FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live@gem.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-x1275:       [PASS][62] -> [DMESG-WARN][63] +2 other tests dmesg-warn
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][64] -> [INCOMPLETE][65] +1 other test incomplete
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - bat-kbl-2:          [PASS][66] -> [ABORT][67] +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html
    - bat-atsm-1:         [PASS][68] -> [ABORT][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
    - bat-dg2-8:          [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_migrate:
    - bat-atsm-1:         [PASS][72] -> [DMESG-FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-arlh-2:         [PASS][74] -> [DMESG-WARN][75] +5 other tests dmesg-warn
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-2/igt@i915_selftest@live@gt_heartbeat.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-2/igt@i915_selftest@live@gt_heartbeat.html
    - bat-twl-2:          [PASS][76] -> [ABORT][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live@gt_heartbeat.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg2-14:         [PASS][78] -> [INCOMPLETE][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html
    - bat-mtlp-9:         [PASS][80] -> [INCOMPLETE][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-14:         [PASS][82] -> [ABORT][83] +1 other test abort
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-9:         [PASS][84] -> [ABORT][85] +1 other test abort
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-9/igt@i915_selftest@live@gt_mocs.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-9/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - bat-twl-2:          [PASS][86] -> [DMESG-WARN][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live@gt_pm.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live@gt_pm.html
    - bat-dg1-7:          [PASS][88] -> [INCOMPLETE][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg1-7/igt@i915_selftest@live@gt_pm.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg1-7/igt@i915_selftest@live@gt_pm.html
    - bat-twl-1:          [PASS][90] -> [ABORT][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-1/igt@i915_selftest@live@gt_pm.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-dg2-9:          [PASS][92] -> [INCOMPLETE][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-9/igt@i915_selftest@live@gt_tlb.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-9/igt@i915_selftest@live@gt_tlb.html
    - bat-mtlp-8:         [PASS][94] -> [DMESG-WARN][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@gtt:
    - bat-arlh-2:         [PASS][96] -> [INCOMPLETE][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-2/igt@i915_selftest@live@gtt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-2/igt@i915_selftest@live@gtt.html
    - bat-adlp-11:        [PASS][98] -> [INCOMPLETE][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-11/igt@i915_selftest@live@gtt.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-11/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@hugepages:
    - fi-glk-j4005:       [PASS][100] -> [INCOMPLETE][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-glk-j4005/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][102] -> [ABORT][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-9/igt@i915_selftest@live@migrate.html
    - bat-apl-1:          [PASS][104] -> [DMESG-FAIL][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-apl-1/igt@i915_selftest@live@migrate.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-apl-1/igt@i915_selftest@live@migrate.html
    - bat-arls-5:         [PASS][106] -> [DMESG-FAIL][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-5/igt@i915_selftest@live@migrate.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-5/igt@i915_selftest@live@migrate.html
    - bat-adlp-6:         [PASS][108] -> [ABORT][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live@migrate.html
    - bat-twl-2:          [PASS][110] -> [INCOMPLETE][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live@migrate.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live@migrate.html
    - fi-bsw-nick:        [PASS][112] -> [DMESG-FAIL][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-bsw-nick/igt@i915_selftest@live@migrate.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-bsw-nick/igt@i915_selftest@live@migrate.html
    - bat-arls-6:         [PASS][114] -> [ABORT][115] +1 other test abort
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-6/igt@i915_selftest@live@migrate.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-6/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@mman:
    - bat-adlp-9:         [PASS][116] -> [INCOMPLETE][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-9/igt@i915_selftest@live@mman.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-9/igt@i915_selftest@live@mman.html
    - bat-apl-1:          [PASS][118] -> [ABORT][119] +1 other test abort
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-apl-1/igt@i915_selftest@live@mman.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-apl-1/igt@i915_selftest@live@mman.html
    - bat-adlp-11:        [PASS][120] -> [ABORT][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-11/igt@i915_selftest@live@mman.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-11/igt@i915_selftest@live@mman.html
    - fi-tgl-1115g4:      [PASS][122] -> [ABORT][123] +1 other test abort
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-tgl-1115g4/igt@i915_selftest@live@mman.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-tgl-1115g4/igt@i915_selftest@live@mman.html
    - fi-bsw-nick:        [PASS][124] -> [ABORT][125] +1 other test abort
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-bsw-nick/igt@i915_selftest@live@mman.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-bsw-nick/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@objects:
    - bat-adlp-6:         [PASS][126] -> [INCOMPLETE][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live@objects.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live@objects.html
    - fi-skl-6600u:       [PASS][128] -> [DMESG-WARN][129] +3 other tests dmesg-warn
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live@objects.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live@objects.html
    - bat-arls-6:         [PASS][130] -> [DMESG-FAIL][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-6/igt@i915_selftest@live@objects.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-6/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@requests:
    - bat-dg2-8:          [PASS][132] -> [DMESG-WARN][133] +3 other tests dmesg-warn
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-8/igt@i915_selftest@live@requests.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-8/igt@i915_selftest@live@requests.html
    - bat-arlh-3:         [PASS][134] -> [DMESG-FAIL][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-3/igt@i915_selftest@live@requests.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-3/igt@i915_selftest@live@requests.html
    - bat-rplp-1:         [PASS][136] -> [ABORT][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rplp-1/igt@i915_selftest@live@requests.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rplp-1/igt@i915_selftest@live@requests.html
    - bat-adlp-6:         [PASS][138] -> [DMESG-WARN][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live@requests.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - fi-cfl-8700k:       [PASS][140] -> [ABORT][141] +1 other test abort
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8700k/igt@i915_selftest@live@reset.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8700k/igt@i915_selftest@live@reset.html
    - bat-kbl-2:          [PASS][142] -> [DMESG-FAIL][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-kbl-2/igt@i915_selftest@live@reset.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-kbl-2/igt@i915_selftest@live@reset.html
    - bat-rpls-4:         [PASS][144] -> [DMESG-FAIL][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rpls-4/igt@i915_selftest@live@reset.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rpls-4/igt@i915_selftest@live@reset.html
    - fi-kbl-7567u:       [PASS][146] -> [DMESG-FAIL][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-7567u/igt@i915_selftest@live@reset.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-7567u/igt@i915_selftest@live@reset.html
    - bat-twl-1:          [PASS][148] -> [DMESG-FAIL][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-1/igt@i915_selftest@live@reset.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-1/igt@i915_selftest@live@reset.html
    - bat-apl-1:          [PASS][150] -> [INCOMPLETE][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-apl-1/igt@i915_selftest@live@reset.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-apl-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg1-7:          [PASS][152] -> [ABORT][153] +1 other test abort
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg1-7/igt@i915_selftest@live@workarounds.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg1-7/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [PASS][154] -> [ABORT][155] +1 other test abort
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][156] ([i915#12061] / [i915#14204]) -> [ABORT][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_159035v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][158] -> [ABORT][159] ([i915#14365])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-9/igt@i915_selftest@live.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][160] -> [ABORT][161] ([i915#14365])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-1/igt@i915_selftest@live.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-1/igt@i915_selftest@live.html
    - bat-rplp-1:         [PASS][162] -> [ABORT][163] ([i915#14365])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rplp-1/igt@i915_selftest@live.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rplp-1/igt@i915_selftest@live.html
    - bat-adlp-11:        [PASS][164] -> [ABORT][165] ([i915#14365])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-11/igt@i915_selftest@live.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-11/igt@i915_selftest@live.html
    - bat-adlp-6:         [PASS][166] -> [ABORT][167] ([i915#14365])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live.html
    - bat-twl-2:          [PASS][168] -> [ABORT][169] ([i915#14365])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@vma:
    - fi-cfl-8109u:       [PASS][170] -> [ABORT][171] ([i915#11814])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live@vma.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live@vma.html
    - fi-skl-6600u:       [PASS][172] -> [ABORT][173] ([i915#11814])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live@vma.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live@vma.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-ilk-650:         NOTRUN -> [SKIP][174] +25 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][175] ([i915#14204]) -> [DMESG-FAIL][176] ([i915#13929])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live@mman.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#11814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365


Build changes
-------------

  * Linux: CI_DRM_17866 -> Patchwork_159035v10

  CI-20190529: 20190529
  CI_DRM_17866: d081bd6774793057d23d5e7942dbc6dbd1c20bd3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8709: 16ce286cac6acc9669a1c758572ae9fceb483c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159035v10: d081bd6774793057d23d5e7942dbc6dbd1c20bd3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/index.html

--===============1774925453783519992==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17866 -&gt; Patchwork_159035v10</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159035v10 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159035v10, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Additional (1): fi-ilk-650 <br />
  Missing    (4): bat-dg2-13 bat-dg1-6 fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159035v10:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-ilk-650/igt@dmabuf@all-tests.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-1/igt@gem_exec_fence@basic-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-1/igt@gem_exec_fence@basic-busy.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-hsw-4770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-ivb-3770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adls-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-glk-j4005/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-glk-j4005/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rpls-4/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rpls-4/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-5/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-rkl-11600/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-rkl-11600/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-guc/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-guc/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-x1275/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-x1275/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-8/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-8/igt@i915_selftest@live@active.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adls-6/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adls-6/igt@i915_selftest@live@client.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rpls-4/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rpls-4/igt@i915_selftest@live@client.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-7567u/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-7567u/igt@i915_selftest@live@client.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live@client.html">INCOMPLETE</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-tgl-1115g4/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-tgl-1115g4/igt@i915_selftest@live@client.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live@coherency.html">DMESG-WARN</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rplp-1/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rplp-1/igt@i915_selftest@live@coherency.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-5/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-5/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-7567u/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-7567u/igt@i915_selftest@live@evict.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-jsl-5/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-jsl-5/igt@i915_selftest@live@evict.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live@gem.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-8/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +5 other tests dmesg-warn</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-9/igt@i915_selftest@live@gt_mocs.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg1-7/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg1-7/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-1/igt@i915_selftest@live@gt_pm.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-9/igt@i915_selftest@live@gt_tlb.html">INCOMPLETE</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-2/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-11/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-11/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-glk-j4005/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-9/igt@i915_selftest@live@migrate.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-apl-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-apl-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-5/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-5/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live@migrate.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-bsw-nick/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-bsw-nick/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-6/igt@i915_selftest@live@migrate.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-9/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-9/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-apl-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-apl-1/igt@i915_selftest@live@mman.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-11/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-11/igt@i915_selftest@live@mman.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-tgl-1115g4/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-tgl-1115g4/igt@i915_selftest@live@mman.html">ABORT</a> +1 other test abort</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-bsw-nick/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-bsw-nick/igt@i915_selftest@live@mman.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live@objects.html">INCOMPLETE</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arls-6/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arls-6/igt@i915_selftest@live@objects.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-8/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-arlh-3/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-arlh-3/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rplp-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rplp-1/igt@i915_selftest@live@requests.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live@requests.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8700k/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8700k/igt@i915_selftest@live@reset.html">ABORT</a> +1 other test abort</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-kbl-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-kbl-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rpls-4/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rpls-4/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-kbl-7567u/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-kbl-7567u/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-apl-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-apl-1/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg1-7/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg1-7/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-dg2-9/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159035v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-twl-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-cfl-8109u/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-cfl-8109u/igt@i915_selftest@live@vma.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814">i915#11814</a>)</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/fi-skl-6600u/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-skl-6600u/igt@i915_selftest@live@vma.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814">i915#11814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17866/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v10/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17866 -&gt; Patchwork_159035v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17866: d081bd6774793057d23d5e7942dbc6dbd1c20bd3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8709: 16ce286cac6acc9669a1c758572ae9fceb483c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159035v10: d081bd6774793057d23d5e7942dbc6dbd1c20bd3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1774925453783519992==--
