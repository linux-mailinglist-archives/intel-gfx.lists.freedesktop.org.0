Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DbTuORj5MWoQtQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 03:32:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1577695F5A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 03:32:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D553810ED99;
	Wed, 17 Jun 2026 01:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8476310ED62;
 Wed, 17 Jun 2026 01:32:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5061527120004748132=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_All_?=
 =?utf-8?q?patches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev16=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2026 01:32:04 -0000
Message-ID: <178165992452.86684.4132990152945040382@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260615201846.307297-1-dev@lankhorst.se>
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [8.89 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,01.org:url,emeril.freedesktop.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1577695F5A
X-Spam: Yes

--===============5061527120004748132==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev16)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18682_full -> Patchwork_159035v16_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159035v16_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v16_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v16_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@full-late-pulse:
    - shard-tglu:         [PASS][1] -> [ABORT][2] +27 other tests abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-tglu-5/igt@gem_exec_balancer@full-late-pulse.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-6/igt@gem_exec_balancer@full-late-pulse.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-glk:          NOTRUN -> [ABORT][3] +5 other tests abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk3/igt@gem_exec_balancer@nohangcheck.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-dg2:          [PASS][4] -> [INCOMPLETE][5] +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-4/igt@gem_exec_balancer@parallel-bb-first.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_schedule@wide:
    - shard-tglu:         NOTRUN -> [ABORT][6] +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@gem_exec_schedule@wide.html

  * igt@gem_exec_schedule@wide@vcs1:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][7] +2 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@gem_exec_schedule@wide@vcs1.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:
    - shard-snb:          [PASS][8] -> [FAIL][9] +5 other tests fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-snb4/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][10] -> [FAIL][11] +6 other tests fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-8/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html

  * igt@kms_flip@plain-flip-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [ABORT][12] +1 other test abort
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-3/igt@kms_flip@plain-flip-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-interruptible@b-hdmi-a1:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][13] +3 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_flip@plain-flip-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-interruptible@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-3/igt@kms_flip@plain-flip-interruptible@b-hdmi-a2.html

  * igt@kms_rotation_crc@primary-x-tiled-reflect-x-0:
    - shard-rkl:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-3/igt@kms_rotation_crc@primary-x-tiled-reflect-x-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-4/igt@kms_rotation_crc@primary-x-tiled-reflect-x-0.html

  * igt@perf@oa-exponents:
    - shard-dg2:          NOTRUN -> [ABORT][17] +3 other tests abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@perf@oa-exponents.html
    - shard-glk10:        [PASS][18] -> [ABORT][19] +1 other test abort
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk10/igt@perf@oa-exponents.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk10/igt@perf@oa-exponents.html

  * igt@perf@oa-exponents@0-rcs0:
    - shard-dg1:          [PASS][20] -> [ABORT][21] +27 other tests abort
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-12/igt@perf@oa-exponents@0-rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-18/igt@perf@oa-exponents@0-rcs0.html

  * igt@perf@polling@0-rcs0:
    - shard-rkl:          [PASS][22] -> [ABORT][23] +30 other tests abort
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-2/igt@perf@polling@0-rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-8/igt@perf@polling@0-rcs0.html

  * igt@perf@sysctl-defaults:
    - shard-glk10:        NOTRUN -> [ABORT][24] +1 other test abort
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk10/igt@perf@sysctl-defaults.html

  * igt@perf_pmu@busy:
    - shard-dg2:          [PASS][25] -> [ABORT][26] +23 other tests abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-7/igt@perf_pmu@busy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-6/igt@perf_pmu@busy.html
    - shard-tglu-1:       NOTRUN -> [ABORT][27] +3 other tests abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@perf_pmu@busy.html

  * igt@perf_pmu@busy-accuracy-2@rcs0:
    - shard-glk11:        NOTRUN -> [ABORT][28] +4 other tests abort
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@perf_pmu@busy-accuracy-2@rcs0.html

  * igt@perf_pmu@busy-accuracy-2@vecs0:
    - shard-glk11:        NOTRUN -> [DMESG-WARN][29] +4 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@perf_pmu@busy-accuracy-2@vecs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-dg1:          [PASS][30] -> [DMESG-WARN][31] +15 other tests dmesg-warn
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-12/igt@perf_pmu@busy-double-start@bcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-12/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@busy-double-start@vecs0:
    - shard-rkl:          [PASS][32] -> [DMESG-WARN][33] +15 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-4/igt@perf_pmu@busy-double-start@vecs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-7/igt@perf_pmu@busy-double-start@vecs0.html

  * igt@perf_pmu@busy-idle:
    - shard-snb:          [PASS][34] -> [ABORT][35] +34 other tests abort
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-snb5/igt@perf_pmu@busy-idle.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb4/igt@perf_pmu@busy-idle.html

  * igt@perf_pmu@busy-idle@vecs0:
    - shard-glk:          [PASS][36] -> [DMESG-WARN][37] +6 other tests dmesg-warn
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk4/igt@perf_pmu@busy-idle@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk4/igt@perf_pmu@busy-idle@vecs0.html

  * igt@perf_pmu@busy-start@vcs0:
    - shard-snb:          [PASS][38] -> [DMESG-WARN][39] +18 other tests dmesg-warn
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-snb5/igt@perf_pmu@busy-start@vcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb6/igt@perf_pmu@busy-start@vcs0.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][40] +2 other tests dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@perf_pmu@busy-start@vcs0.html

  * igt@perf_pmu@busy-start@vcs1:
    - shard-tglu:         [PASS][41] -> [DMESG-WARN][42] +15 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-tglu-4/igt@perf_pmu@busy-start@vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-6/igt@perf_pmu@busy-start@vcs1.html

  * igt@perf_pmu@busy@vecs1:
    - shard-dg2:          [PASS][43] -> [DMESG-WARN][44] +20 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-7/igt@perf_pmu@busy@vecs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-6/igt@perf_pmu@busy@vecs1.html

  * igt@runner@aborted:
    - shard-mtlp:         NOTRUN -> ([FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54], [FAIL][55], [FAIL][56], [FAIL][57], [FAIL][58], [FAIL][59], [FAIL][60], [FAIL][61], [FAIL][62], [FAIL][63], [FAIL][64])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-7/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-7/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-6/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-8/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-6/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-7/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-4/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-8/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-1/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-8/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-8/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-4/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-7/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-4/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-4/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-1/igt@runner@aborted.html
    - shard-dg2:          NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-5/igt@runner@aborted.html

  * igt@syncobj_timeline@wait-any-interrupted:
    - shard-glk:          [PASS][66] -> [ABORT][67] +10 other tests abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk1/igt@syncobj_timeline@wait-any-interrupted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk4/igt@syncobj_timeline@wait-any-interrupted.html

  
#### Warnings ####

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][68] ([i915#4771]) -> [ABORT][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@gem_exec_balancer@bonded-sync.html
    - shard-dg1:          [SKIP][70] ([i915#4771]) -> [ABORT][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-16/igt@gem_exec_balancer@bonded-sync.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-16/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          [WARN][72] ([i915#2658]) -> [WARN][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb6/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglu:         [WARN][74] ([i915#2658]) -> [WARN][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-tglu-4/igt@gem_pwrite@basic-exhaustion.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-glk:          [SKIP][76] -> [ABORT][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk2/igt@perf@gen12-oa-tlb-invalidate.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk2/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf_pmu@module-unload:
    - shard-dg1:          [ABORT][78] ([i915#15778]) -> [ABORT][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-13/igt@perf_pmu@module-unload.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-12/igt@perf_pmu@module-unload.html
    - shard-snb:          [ABORT][80] ([i915#15778]) -> [ABORT][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-snb4/igt@perf_pmu@module-unload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb1/igt@perf_pmu@module-unload.html
    - shard-tglu:         [ABORT][82] ([i915#15778]) -> [ABORT][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-tglu-6/igt@perf_pmu@module-unload.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-5/igt@perf_pmu@module-unload.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18682_full and Patchwork_159035v16_full:

### New IGT tests (22) ###

  * igt@kms_vblank@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@atomic-fastset:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@basic-x-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@clone-exclusive-crtc:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@crc-primary-basic-yf-tiled-ccs:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@engine-engine-hang:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@fbchdr-2p-scndscrn-indfb-pgflip-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@fbcpsr-rgb565-draw-mmap-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@getclient-master-drop:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@getfb-handle-zero:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@hdr-1p-primscrn-shrfb-plflip-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@hdr-rgb565-draw-pwrite:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@memory-info-purgeable:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@multi-wait-available-unsubmitted-submitted-signaled:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@plane-ctm3x4:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@psrhdr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@random-engines:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@rc6-accuracy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_vblank@secure-non-root:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_159035v16_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-dg1:          [PASS][84] -> [INCOMPLETE][85] ([i915#16275])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-16/igt@gem_exec_balancer@parallel-contexts.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-16/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3539] / [i915#4852])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4860])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> [SKIP][88] ([i915#4613])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3282])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][90] ([i915#14702])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#11681] / [i915#6621])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][92] ([i915#16182] / [i915#4817])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk1/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic:
    - shard-rkl:          [PASS][93] -> [FAIL][94] ([i915#14888])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_async_flips@alternate-sync-async-flip-atomic.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][95] ([i915#14888]) +2 other tests fail
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
    - shard-glk11:        NOTRUN -> [FAIL][96] ([i915#14888]) +6 other tests fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][97] ([i915#1769])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:
    - shard-glk:          [PASS][98] -> [DMESG-WARN][99] ([i915#118]) +1 other test dmesg-warn
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk8/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#14098] / [i915#6095]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#6095]) +11 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#6095]) +19 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-14/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#12313])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#11151] / [i915#7828])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-glk:          NOTRUN -> [SKIP][105] +108 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#11151] / [i915#7828])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#15330])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][108] ([i915#13566])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-glk:          NOTRUN -> [FAIL][109] ([i915#13028])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#15804])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk10:        [PASS][112] -> [FAIL][113] ([i915#13027]) +1 other test fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk10/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk10/igt@kms_flip@2x-flip-vs-expired-vblank.html
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#9934])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_flip@2x-flip-vs-expired-vblank.html
    - shard-snb:          [PASS][115] -> [FAIL][116] ([i915#13027]) +1 other test fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-snb6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#3637] / [i915#9934])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][118] ([i915#12745] / [i915#4839])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][119] ([i915#12745])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#15643])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#15643])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#5439])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#15989])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#15989]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-msflip-blt.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-glk:          [PASS][126] -> [SKIP][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-pwrite.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#15102]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#15102])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#15990]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#15102]) +4 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-pwrite:
    - shard-dg2:          [PASS][132] -> [SKIP][133] ([i915#15989])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-pwrite.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-1/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-cur-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#15991]) +3 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@hdr-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][135] ([i915#16056])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_frontbuffer_tracking@hdr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][136] +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#15991] / [i915#5354]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#16011] / [i915#3555] / [i915#8228])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_hdr@static-toggle-dpms.html
    - shard-rkl:          [PASS][140] -> [SKIP][141] ([i915#16011] / [i915#3555] / [i915#8228])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#16011]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#16011]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-4-xrgb16161616f:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#16011]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-18/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-4-xrgb16161616f.html

  * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-a-plane-4:
    - shard-glk10:        NOTRUN -> [SKIP][145] +23 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk10/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-a-plane-4.html

  * igt@kms_pm_backlight@fade:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#12343] / [i915#5354])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [PASS][147] -> [INCOMPLETE][148] ([i915#14419])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-glk11:        NOTRUN -> [SKIP][149] ([i915#11520])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][150] ([i915#11520]) +2 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#11520])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-primary-page-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#9732])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_psr@fbc-pr-primary-page-flip.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-glk11:        NOTRUN -> [SKIP][153] +87 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@pr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#1072] / [i915#9732])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_psr@pr-cursor-render.html

  * igt@kms_vblank@query-idle-hang@pipe-d-hdmi-a-3:
    - shard-dg2:          [PASS][155] -> [INCOMPLETE][156] ([i915#12276]) +1 other test incomplete
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-5/igt@kms_vblank@query-idle-hang@pipe-d-hdmi-a-3.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-3/igt@kms_vblank@query-idle-hang@pipe-d-hdmi-a-3.html

  * igt@perf_pmu@busy@rcs0:
    - shard-dg1:          [PASS][157] -> [ABORT][158] ([i915#13562])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-12/igt@perf_pmu@busy@rcs0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-18/igt@perf_pmu@busy@rcs0.html

  * igt@perf_pmu@render-node-busy-idle:
    - shard-dg1:          [PASS][159] -> [INCOMPLETE][160] ([i915#13520]) +1 other test incomplete
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg1-14/igt@perf_pmu@render-node-busy-idle.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg1-17/igt@perf_pmu@render-node-busy-idle.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][161] ([i915#13356] / [i915#16348]) -> [PASS][162] +1 other test pass
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-dg2-3/igt@gem_ccs@suspend-resume.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@gem_ccs@suspend-resume.html

  
#### Warnings ####

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][163] ([i915#14544] / [i915#9323]) -> [SKIP][164] ([i915#9323])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@gem_ccs@suspend-resume.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][165] ([i915#14544] / [i915#4525]) -> [SKIP][166] ([i915#4525])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-rkl:          [SKIP][167] ([i915#14544] / [i915#3281]) -> [SKIP][168] ([i915#3281])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          [SKIP][169] ([i915#3281]) -> [SKIP][170] ([i915#14544] / [i915#3281]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@gem_exec_reloc@basic-scanout.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][171] ([i915#3282]) -> [SKIP][172] ([i915#14544] / [i915#3282])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          [SKIP][173] ([i915#8411]) -> [SKIP][174] ([i915#14544] / [i915#8411])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          [SKIP][175] ([i915#3297]) -> [SKIP][176] ([i915#14544] / [i915#3297])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          [SKIP][177] ([i915#2527]) -> [SKIP][178] ([i915#14544] / [i915#2527])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@fault-injection@intel_gt_init-enodev:
    - shard-rkl:          [SKIP][179] ([i915#15479]) -> [SKIP][180] ([i915#14544] / [i915#15479]) +4 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][181] ([i915#14544] / [i915#6590]) -> [SKIP][182] ([i915#6590]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][183] ([i915#5723]) -> [SKIP][184] ([i915#14544] / [i915#5723])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-rkl:          [SKIP][185] ([i915#5286]) -> [SKIP][186] ([i915#14544] / [i915#5286])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][187] ([i915#14544] / [i915#5286]) -> [SKIP][188] ([i915#5286])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][189] ([i915#3638]) -> [SKIP][190] ([i915#14544] / [i915#3638])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-rkl:          [SKIP][191] ([i915#14098] / [i915#6095]) -> [SKIP][192] ([i915#14098] / [i915#14544] / [i915#6095]) +5 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][193] ([i915#6095]) -> [SKIP][194] ([i915#14544] / [i915#6095]) +4 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][195] ([i915#12313]) -> [SKIP][196] ([i915#12313] / [i915#14544])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs:
    - shard-rkl:          [SKIP][197] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][198] ([i915#14098] / [i915#6095]) +2 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          [SKIP][199] ([i915#3742]) -> [SKIP][200] ([i915#14544] / [i915#3742])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_cdclk@plane-scaling.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          [SKIP][201] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][202] ([i915#11151] / [i915#7828]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-rkl:          [SKIP][203] ([i915#11151] / [i915#7828]) -> [SKIP][204] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][205] ([i915#14544] / [i915#15865]) -> [SKIP][206] ([i915#15865])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_content_protection@content-type-change.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_content_protection@content-type-change.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][207] ([i915#13049] / [i915#14544]) -> [SKIP][208] ([i915#13049])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          [SKIP][209] ([i915#3555]) -> [SKIP][210] ([i915#14544] / [i915#3555])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_cursor_crc@cursor-random-32x10.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          [SKIP][211] ([i915#13748]) -> [SKIP][212] ([i915#13748] / [i915#14544])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_dp_link_training@uhbr-mst.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-rkl:          [SKIP][213] ([i915#14544] / [i915#9934]) -> [SKIP][214] ([i915#9934])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          [SKIP][215] ([i915#9934]) -> [SKIP][216] ([i915#14544] / [i915#9934])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_flip@2x-wf_vblank-ts-check.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-rkl:          [SKIP][217] ([i915#14544] / [i915#15643]) -> [SKIP][218] ([i915#15643]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][219] ([i915#15643]) -> [SKIP][220] ([i915#14544] / [i915#15643]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][221] ([i915#14544]) -> [SKIP][222] +23 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-suspend:
    - shard-glk:          [INCOMPLETE][223] ([i915#16056]) -> [SKIP][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
    - shard-rkl:          [SKIP][225] ([i915#15989]) -> [ABORT][226] ([i915#15132])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][227] ([i915#1825]) -> [SKIP][228] ([i915#14544] / [i915#1825]) +4 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][229] ([i915#15102]) -> [SKIP][230] ([i915#14544] / [i915#15102]) +2 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][231] -> [SKIP][232] ([i915#14544]) +11 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][233] ([i915#15102] / [i915#3023]) -> [SKIP][234] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][235] ([i915#14544] / [i915#1825]) -> [SKIP][236] ([i915#1825])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-rkl:          [SKIP][237] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][238] ([i915#15102] / [i915#3023]) +4 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psrhdr-indfb-scaledprimary:
    - shard-rkl:          [SKIP][239] ([i915#14544] / [i915#15102]) -> [SKIP][240] ([i915#15102]) +9 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-indfb-scaledprimary.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-2/igt@kms_frontbuffer_tracking@psrhdr-indfb-scaledprimary.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][241] ([i915#14544] / [i915#15458]) -> [SKIP][242] ([i915#15458])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-rkl:          [SKIP][243] ([i915#15709]) -> [SKIP][244] ([i915#14544] / [i915#15709])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-modifier.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          [SKIP][245] ([i915#12343] / [i915#14544] / [i915#5354]) -> [SKIP][246] ([i915#12343] / [i915#5354])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_pm_backlight@fade.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][247] ([i915#8430]) -> [SKIP][248] ([i915#14544] / [i915#8430])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][249] ([i915#6524]) -> [SKIP][250] ([i915#14544] / [i915#6524])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_prime@basic-modeset-hybrid.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][251] ([i915#11520] / [i915#14544]) -> [SKIP][252] ([i915#11520])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][253] ([i915#9683]) -> [SKIP][254] ([i915#14544] / [i915#9683])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_psr2_su@page_flip-nv12.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          [SKIP][255] ([i915#14544] / [i915#9683]) -> [SKIP][256] ([i915#9683])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][257] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][258] ([i915#1072] / [i915#9732]) +3 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          [SKIP][259] ([i915#1072] / [i915#9732]) -> [SKIP][260] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_psr@psr2-sprite-mmap-cpu.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-rkl:          [SKIP][261] ([i915#15949]) -> [SKIP][262] ([i915#14544] / [i915#15949])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#5289]) -> [SKIP][264] ([i915#5289])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          [SKIP][265] ([i915#3708]) -> [SKIP][266] ([i915#14544] / [i915#3708])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/shard-rkl-1/igt@prime_vgem@fence-flip-hang.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13028]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13028
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
  [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
  [i915#16056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16056
  [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
  [i915#16275]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16275
  [i915#16348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18682 -> Patchwork_159035v16

  CI-20190529: 20190529
  CI_DRM_18682: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8963: b19a1c7c50adbf0e090be48d9cbc90596a3434bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159035v16: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/index.html

--===============5061527120004748132==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMP=
T_RT work on i915 + xe. (rev16)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_159035v16/index.html">https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_159035v16/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18682_full -&gt; Patchwork_159035v=
16_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159035v16_full absolutely =
need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_159035v16_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
159035v16_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full-late-pulse:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-tglu-5/igt@gem_exec_balancer@full-late-pulse.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9035v16/shard-tglu-6/igt@gem_exec_balancer@full-late-pulse.html">ABORT</a> =
+27 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk3/igt@gem_exec_balancer@nohangch=
eck.html">ABORT</a> +5 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
59035v16/shard-dg2-4/igt@gem_exec_balancer@parallel-bb-first.html">INCOMPLE=
TE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@gem_exec_schedule@wide.h=
tml">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide@vcs1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@gem_exec_schedule@wide@v=
cs1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-snb4/igt@kms_async_flips@alternate-sync-async-flip-atom=
ic@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_159035v16/shard-snb6/igt@kms_async_flips@alterna=
te-sync-async-flip-atomic@pipe-a-hdmi-a-1.html">FAIL</a> +5 other tests fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip-at=
omic@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159035v16/shard-tglu-8/igt@kms_async_flips@alt=
ernate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html">FAIL</a> +6 other tests=
 fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-3/igt@kms_flip@plain-flip-inter=
ruptible@a-hdmi-a2.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_flip@plain-flip-inte=
rruptible@b-hdmi-a1.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-3/igt@kms_flip@plain-flip-inter=
ruptible@b-hdmi-a2.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-x-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-3/igt@kms_rotation_crc@primary-x-tiled-reflect-x-0.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_159035v16/shard-rkl-4/igt@kms_rotation_crc@primary-x-tiled-reflect-=
x-0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@perf@oa-exponents.html">A=
BORT</a> +3 other tests abort</li>
<li>shard-glk10:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk10/igt@perf@oa-exponents.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-glk=
10/igt@perf@oa-exponents.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents@0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-12/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/s=
hard-dg1-18/igt@perf@oa-exponents@0-rcs0.html">ABORT</a> +27 other tests ab=
ort</li>
</ul>
</li>
<li>
<p>igt@perf@polling@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-2/igt@perf@polling@0-rcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-r=
kl-8/igt@perf@polling@0-rcs0.html">ABORT</a> +30 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf@sysctl-defaults:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk10/igt@perf@sysctl-defaults.html=
">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-7/igt@perf_pmu@busy.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-6/i=
gt@perf_pmu@busy.html">ABORT</a> +23 other tests abort</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@perf_pmu@busy.html">ABOR=
T</a> +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@rcs0:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@perf_pmu@busy-accuracy-2@=
rcs0.html">ABORT</a> +4 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@vecs0:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@perf_pmu@busy-accuracy-2@=
vecs0.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-12/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1590=
35v16/shard-dg1-12/igt@perf_pmu@busy-double-start@bcs0.html">DMESG-WARN</a>=
 +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-4/igt@perf_pmu@busy-double-start@vecs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1590=
35v16/shard-rkl-7/igt@perf_pmu@busy-double-start@vecs0.html">DMESG-WARN</a>=
 +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-snb5/igt@perf_pmu@busy-idle.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-snb=
4/igt@perf_pmu@busy-idle.html">ABORT</a> +34 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk4/igt@perf_pmu@busy-idle@vecs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/sha=
rd-glk4/igt@perf_pmu@busy-idle@vecs0.html">DMESG-WARN</a> +6 other tests dm=
esg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@vcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-snb5/igt@perf_pmu@busy-start@vcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/sha=
rd-snb6/igt@perf_pmu@busy-start@vcs0.html">DMESG-WARN</a> +18 other tests d=
mesg-warn</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@perf_pmu@busy-start@vcs0.h=
tml">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@vcs1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-tglu-4/igt@perf_pmu@busy-start@vcs1.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/s=
hard-tglu-6/igt@perf_pmu@busy-start@vcs1.html">DMESG-WARN</a> +15 other tes=
ts dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-7/igt@perf_pmu@busy@vecs1.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-d=
g2-6/igt@perf_pmu@busy@vecs1.html">DMESG-WARN</a> +20 other tests dmesg-war=
n</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903=
5v16/shard-mtlp-7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159035v16/shard-mtlp-7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp=
-6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903=
5v16/shard-mtlp-8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159035v16/shard-mtlp-7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp=
-4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159035v16/shard-mtlp-8/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903=
5v16/shard-mtlp-1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-8/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159035v16/shard-mtlp-8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp=
-4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159035v16/shard-mtlp-5/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903=
5v16/shard-mtlp-7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp-4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159035v16/shard-mtlp-4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-mtlp=
-1/igt@runner@aborted.html">FAIL</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-5/igt@runner@aborted.html">FAIL=
</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-interrupted:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk1/igt@syncobj_timeline@wait-any-interrupted.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
159035v16/shard-glk4/igt@syncobj_timeline@wait-any-interrupted.html">ABORT<=
/a> +10 other tests abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i=
915#4771</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_159035v16/shard-dg2-8/igt@gem_exec_balancer@bonded-sync.html">ABORT<=
/a></li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-16/igt@gem_exec_balancer@bonded-sync.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">=
i915#4771</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_159035v16/shard-dg1-16/igt@gem_exec_balancer@bonded-sync.html">ABOR=
T</a></li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-snb5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915=
#2658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159035v16/shard-snb6/igt@gem_pwrite@basic-exhaustion.html">WARN</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-tglu-4/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i9=
15#2658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159035v16/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html">WARN</a>=
</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk2/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16=
/shard-glk2/igt@perf@gen12-oa-tlb-invalidate.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-13/igt@perf_pmu@module-unload.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#=
15778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159035v16/shard-dg1-12/igt@perf_pmu@module-unload.html">ABORT</a></li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-snb4/igt@perf_pmu@module-unload.html">ABORT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#15=
778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_159035v16/shard-snb1/igt@perf_pmu@module-unload.html">ABORT</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-tglu-6/igt@perf_pmu@module-unload.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#=
15778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159035v16/shard-tglu-5/igt@perf_pmu@module-unload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18682_full and Patchwork_1=
59035v16_full:</p>
<h3>New IGT tests (22)</h3>
<ul>
<li>
<p>igt@kms_vblank@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@atomic-fastset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@basic-x-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@clone-exclusive-crtc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crc-primary-basic-yf-tiled-ccs:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@engine-engine-hang:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@fbchdr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@getclient-master-drop:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@getfb-handle-zero:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@hdr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@hdr-rgb565-draw-pwrite:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@memory-info-purgeable:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@multi-wait-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clampin=
g:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@plane-ctm3x4:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@psrhdr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@random-engines:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@rc6-accuracy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@secure-non-root:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159035v16_full that come from kn=
own issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-16/igt@gem_exec_balancer@parallel-contexts.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
159035v16/shard-dg1-16/igt@gem_exec_balancer@parallel-contexts.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/16275">i915#16275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@gem_exec_flush@basic-wb-r=
o-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@gem_lmem_swapping@heavy-ve=
rify-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@gem_partial_pwrite_pread@=
reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14702">i915#14702</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11681">i915#11681</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk1/igt@i915_suspend@forcewake.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/16182">i915#16182</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_async_flips@alternate-sync-async-flip-ato=
mic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_159035v16/shard-rkl-5/igt@kms_async_flips@alternate-sync-async-=
flip-atomic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14888">i915#14888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_async_flips@alternate=
-sync-async-flip-atomic@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +2 o=
ther tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_async_flips@alternate=
-sync-async-flip-atomic@pipe-c-hdmi-a-2.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +6 o=
ther tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk8/igt@kms_atomic_transition@plane-all-transition-non=
blocking-fencing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159035v16/shard-glk4/igt@kms_atomic_transition@pla=
ne-all-transition-nonblocking-fencing.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118">i915#118</a>) +1 o=
ther test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-2/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg1-14/igt@kms_ccs@crc-primary-susp=
end-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@kms_ccs@crc-sprite-plane=
s-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> +108 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_chamelium_edid@dp-ed=
id-stress-resolution-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_content_protection@d=
p-mst-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_cursor_crc@cursor-sli=
ding-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk1/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13028">i915#13028</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159035v16/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-ato=
mic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15804">i915#15804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk10:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk10/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
9035v16/shard-glk10/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i=
915#13027</a>) +1 other test fail</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_flip@2x-flip-vs-expir=
ed-vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9934">i915#9934</a>)</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-snb6/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159=
035v16/shard-snb7/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i91=
5#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_flip@2x-flip-vs-fenc=
es-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_frontbuffer_tracking=
@fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_frontbuffer_tracking@=
fbchdr-1p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-s=
hrfb-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_frontbuffer_tracking@=
fbchdr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pr=
i-indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_frontbuffer_tracki=
ng@fbchdr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-g=
tt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_frontbuffer_tracking@=
fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_frontbuffer_tracking@=
fbcpsrhdr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pr=
i-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159035v16/shard-dg2-1/igt@kms_frontbuffer_track=
ing@hdr-1p-offscreen-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_frontbuffer_tracking@=
hdr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +3 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_frontbuffer_tracking@=
hdr-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/16056">i915#16056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-4/igt@kms_frontbuffer_tracking=
@psr-2p-primscrn-indfb-msflip-blt.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#53=
54</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_frontbuffer_tracking=
@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/16011">i915#16011</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/=
shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_hdr@static-toggle-dpm=
s@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_hdr@static-toggle-dpm=
s@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-4-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg1-18/igt@kms_hdr@static-toggle-dp=
ms@pipe-a-hdmi-a-4-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier@pipe-a-plane-4:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk10/igt@kms_plane@pixel-format-x-=
tiled-modifier@pipe-a-plane-4.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12343">i915#12343</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159=
035v16/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1441=
9">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk5/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-over=
lay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-page-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-tglu-1/igt@kms_psr@fbc-pr-primary-p=
age-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk11/igt@kms_psr@fbc-psr2-cursor-p=
lane-move.html">SKIP</a> +87 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-4/igt@kms_psr@pr-cursor-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-idle-hang@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-5/igt@kms_vblank@query-idle-hang@pipe-d-hdmi-a-3.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159035v16/shard-dg2-3/igt@kms_vblank@query-idle-hang@pipe-d-hdmi-a-3.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-12/igt@perf_pmu@busy@rcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-d=
g1-18/igt@perf_pmu@busy@rcs0.html">ABORT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/13562">i915#13562</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy-idle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg1-14/igt@perf_pmu@render-node-busy-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15903=
5v16/shard-dg1-17/igt@perf_pmu@render-node-busy-idle.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">i=
915#13520</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ccs@suspend-resume:<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-dg2-3/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/16348">i915#16348</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-dg2-8/igt@gem_ccs@suspend-resume.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_159035v16/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/93=
23">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@gem_exec_balancer@pa=
rallel-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@gem_exec_reloc@basic-=
gtt-wc-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159035v16/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i91=
5#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_159035v16/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_159035v16/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tile=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297=
">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159035v16/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527=
">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_159035v16/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_gt_init-enodev:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@i915_module_load@fault-injection@intel_gt_ini=
t-enodev.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15479">i915#15479</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@i915_module_load=
@fault-injection@intel_gt_init-enodev.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479">i915#1=
5479</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6590">i915#6590</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@i915_pm_freq_mult@media=
-freq@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5723">i915#5723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_159035v16/shard-rkl-6/igt@i915_query@test-query-geometry-=
subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_159035v16/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_big_fb@4-tiled-8bp=
p-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_159035v16/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_ccs@bad-r=
otation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"=
>i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pi=
pe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_ccs@bad-r=
otation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"=
>i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_ccs@crc-sprite-pla=
nes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/i=
gt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"=
>i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#37=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_159035v16/shard-rkl-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/111=
51">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-2/igt@kms_ch=
amelium_edid@hdmi-edid-read.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-storm.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1115=
1">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-=
hpd-storm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_content=
_protection@content-type-change.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_cursor_crc=
@cursor-offscreen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_159035v16/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_159035v16/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
748">i915#13748</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_flip@2x-flip-vs-expired-vblank.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_flip@2x-flip-vs-e=
xpired-vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">=
i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_159035v16/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp=
-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-=
rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_fl=
ip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-c=
ur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_=
frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a=
> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/16056">i915#16056</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_159035v16/shard-glk6/igt@kms_frontbuffer_tracking@f=
bchdr-suspend.html">SKIP</a></li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15989">i915#15989</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159035v16/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchd=
r-suspend.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_f=
rontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1825">i915#1825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-f=
liptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-=
indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_frontbuffer_track=
ing@hdr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-r=
kl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-r=
kl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-p=
write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard=
-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102=
">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-indfb-scaledp=
rimary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-2/igt@km=
s_frontbuffer_tracking@psrhdr-indfb-scaledprimary.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#151=
02</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_joiner@basic-ultra-j=
oiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-modifier.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled=
-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#123=
43</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_pm_backlight@f=
ade.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12343">i915#12343</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i9=
15#8430</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_159035v16/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">=
i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_159035v16/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-s=
f-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/ig=
t@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i9=
15#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915=
#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159035v16/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9683">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_psr@psr-=
sprite-plane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15949">i915#15949</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-6/igt@kms_psr_stress_tes=
t@invalidate-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949">i915#159=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/shard-rkl-5/igt@kms_rotat=
ion_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18682/shard-rkl-1/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915=
#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_159035v16/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18682 -&gt; Patchwork_159035v16</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18682: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8963: b19a1c7c50adbf0e090be48d9cbc90596a3434bf @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159035v16: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5061527120004748132==--
