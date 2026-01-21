Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IF7SIltrcGkVXwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 06:59:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE0951CF9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 06:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE8810E076;
	Wed, 21 Jan 2026 05:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B357510E073;
 Wed, 21 Jan 2026 05:59:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5186441787983618509=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Account_for_DSC_bubble_ov?=
 =?utf-8?q?erhead_for_horizontal_slices_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jan 2026 05:59:51 -0000
Message-ID: <176897519172.174471.4948979672317620711@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: ABE0951CF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============5186441787983618509==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Account for DSC bubble overhead for horizontal slices (rev3)
URL   : https://patchwork.freedesktop.org/series/152804/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17857 -> Patchwork_152804v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152804v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152804v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152804v3:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-apl-1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@core_hotunplug@unbind-rebind.html
    - bat-rplp-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@eof:
    - bat-twl-1:          [PASS][5] -> [SKIP][6] +13 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@fbdev@eof.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@fbdev@eof.html

  * igt@fbdev@nullptr:
    - bat-jsl-1:          [PASS][7] -> [SKIP][8] +8 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@fbdev@nullptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@fbdev@nullptr.html

  * igt@i915_selftest@live:
    - fi-glk-j4005:       [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-glk-j4005/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-glk-j4005/igt@i915_selftest@live.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-arlh-3:         [PASS][11] -> [SKIP][12] +9 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-rplp-1:         [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-twl-2:          [PASS][15] -> [SKIP][16] +13 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff.html

  
#### Warnings ####

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-arlh-3:         [SKIP][17] ([i915#12637] / [i915#9688]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_152804v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - fi-kbl-7567u:       [PASS][19] -> [SKIP][20] +9 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@fbdev@eof.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@fbdev@eof.html
    - bat-apl-1:          [PASS][21] -> [SKIP][22] +9 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@fbdev@eof.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@fbdev@eof.html
    - bat-rplp-1:         [PASS][23] -> [SKIP][24] ([i915#2582]) +3 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@fbdev@eof.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-cfl-8109u:       [PASS][25] -> [SKIP][26] ([i915#1849])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@fbdev@info.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@fbdev@info.html
    - fi-skl-6600u:       [PASS][27] -> [SKIP][28] ([i915#1849])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@fbdev@info.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@fbdev@info.html
    - bat-twl-2:          [PASS][29] -> [SKIP][30] ([i915#1849])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@fbdev@info.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@fbdev@info.html
    - bat-mtlp-9:         [PASS][31] -> [SKIP][32] ([i915#1849] / [i915#2582])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@fbdev@info.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@fbdev@info.html
    - bat-mtlp-8:         [PASS][33] -> [SKIP][34] ([i915#1849] / [i915#2582])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@fbdev@info.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@fbdev@info.html
    - bat-jsl-1:          [PASS][35] -> [SKIP][36] ([i915#1849])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@fbdev@info.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@fbdev@info.html
    - bat-arlh-3:         [PASS][37] -> [SKIP][38] ([i915#1849])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@fbdev@info.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@fbdev@info.html
    - fi-kbl-7567u:       [PASS][39] -> [SKIP][40] ([i915#1849])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@fbdev@info.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@fbdev@info.html
    - bat-twl-1:          [PASS][41] -> [SKIP][42] ([i915#1849])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@fbdev@info.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@fbdev@info.html
    - bat-apl-1:          [PASS][43] -> [SKIP][44] ([i915#1849])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@fbdev@info.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@fbdev@info.html
    - bat-rplp-1:         [PASS][45] -> [SKIP][46] ([i915#1849] / [i915#2582])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@fbdev@info.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - bat-mtlp-9:         [PASS][47] -> [SKIP][48] ([i915#2582]) +3 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@fbdev@nullptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@fbdev@nullptr.html
    - bat-mtlp-8:         [PASS][49] -> [SKIP][50] ([i915#2582]) +3 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@fbdev@nullptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@fbdev@nullptr.html
    - bat-arlh-3:         [PASS][51] -> [SKIP][52] ([i915#11345]) +3 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@fbdev@nullptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@fbdev@nullptr.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][53] -> [DMESG-FAIL][54] ([i915#12061]) +1 other test dmesg-fail
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [PASS][55] -> [DMESG-FAIL][56] ([i915#12061]) +1 other test dmesg-fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][57] -> [DMESG-FAIL][58] ([i915#12061]) +1 other test dmesg-fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][59] -> [DMESG-FAIL][60] ([i915#12061]) +1 other test dmesg-fail
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-mtlp-9:         [PASS][61] -> [SKIP][62] ([i915#11190]) +13 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-mtlp-8:         [PASS][63] -> [SKIP][64] ([i915#11190]) +13 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-jsl-1:          [PASS][65] -> [SKIP][66] ([i915#11190]) +13 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-skl-6600u:       [PASS][67] -> [SKIP][68] ([i915#11190]) +12 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-mtlp-9:         [PASS][69] -> [SKIP][70] ([i915#3637]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-mtlp-8:         [PASS][71] -> [SKIP][72] ([i915#3637]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-rplp-1:         [PASS][73] -> [SKIP][74] ([i915#3637]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][75] -> [SKIP][76] +9 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
    - bat-mtlp-9:         [PASS][77] -> [SKIP][78] ([i915#15099] / [i915#4342] / [i915#5354])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html
    - bat-mtlp-8:         [PASS][79] -> [SKIP][80] ([i915#15099] / [i915#4342] / [i915#5354])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_frontbuffer_tracking@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_frontbuffer_tracking@basic.html
    - bat-rplp-1:         [PASS][81] -> [SKIP][82] ([i915#1849])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_frontbuffer_tracking@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-rplp-1:         [PASS][83] -> [SKIP][84] ([i915#11190]) +13 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-arlh-3:         [PASS][85] -> [SKIP][86] ([i915#11190]) +13 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - fi-kbl-7567u:       [PASS][87] -> [SKIP][88] ([i915#11190]) +13 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-twl-1:          [PASS][89] -> [SKIP][90] ([i915#11190]) +13 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-apl-1:          [PASS][91] -> [SKIP][92] ([i915#11190]) +12 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-twl-2:          [PASS][93] -> [SKIP][94] ([i915#11190]) +13 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [PASS][95] -> [SKIP][96] ([i915#11190]) +13 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlp-6:         [PASS][97] -> [SKIP][98] ([i915#9812])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-9:         [PASS][99] -> [SKIP][100] ([i915#5354])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-8:         [PASS][101] -> [SKIP][102] ([i915#5354])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html
    - bat-jsl-1:          [PASS][103] -> [SKIP][104] ([i915#15205])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-cursor-plane-move:
    - fi-skl-6600u:       [PASS][105] -> [SKIP][106] +14 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html
    - bat-adlp-6:         [PASS][107] -> [SKIP][108] ([i915#1072] / [i915#9732]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-mtlp-9:         [PASS][109] -> [SKIP][110] ([i915#1072] / [i915#9732]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-mtlp-8:         [PASS][111] -> [SKIP][112] ([i915#1072] / [i915#9732]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_psr@psr-sprite-plane-onoff.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_psr@psr-sprite-plane-onoff.html
    - bat-jsl-1:          [PASS][113] -> [SKIP][114] ([i915#1072]) +3 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-twl-2:          [PASS][115] -> [SKIP][116] ([i915#3708])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@prime_vgem@basic-fence-flip.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@prime_vgem@basic-fence-flip.html
    - bat-mtlp-9:         [PASS][117] -> [SKIP][118] ([i915#3708])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html
    - bat-mtlp-8:         [PASS][119] -> [SKIP][120] ([i915#3708])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html
    - bat-jsl-1:          [PASS][121] -> [SKIP][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html
    - bat-twl-1:          [PASS][123] -> [SKIP][124] ([i915#3708])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@prime_vgem@basic-fence-flip.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@prime_vgem@basic-fence-flip.html
    - bat-rplp-1:         [PASS][125] -> [SKIP][126] ([i915#3708])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [INCOMPLETE][127] -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arls-5/igt@i915_selftest@live.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - bat-arls-5:         [INCOMPLETE][129] ([i915#14564]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arls-5/igt@i915_selftest@live@requests.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arls-5/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][131] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][132] ([i915#12061] / [i915#14204])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-atsm-1/igt@i915_selftest@live.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][133] ([i915#13929]) -> [DMESG-FAIL][134] ([i915#14204])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-atsm-1/igt@i915_selftest@live@mman.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-atsm-1/igt@i915_selftest@live@mman.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-twl-2:          [SKIP][135] ([i915#11030] / [i915#11731]) -> [SKIP][136] ([i915#11190]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-mtlp-9:         [SKIP][137] ([i915#4213]) -> [SKIP][138] ([i915#11190]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-mtlp-8:         [SKIP][139] ([i915#4213]) -> [SKIP][140] ([i915#11190]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          [SKIP][141] ([i915#4103]) -> [SKIP][142] ([i915#11190]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-arlh-3:         [SKIP][143] ([i915#11731]) -> [SKIP][144] ([i915#11190]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-twl-1:          [SKIP][145] ([i915#11030] / [i915#11731]) -> [SKIP][146] ([i915#11190]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-rplp-1:         [SKIP][147] ([i915#4103] / [i915#4213]) -> [SKIP][148] ([i915#11190]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-7567u:       [SKIP][149] -> [SKIP][150] ([i915#11190]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
    - bat-twl-1:          [SKIP][151] ([i915#9886]) -> [SKIP][152] ([i915#11190])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@kms_dsc@dsc-basic.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@kms_dsc@dsc-basic.html
    - bat-apl-1:          [SKIP][153] -> [SKIP][154] ([i915#11190]) +3 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@kms_dsc@dsc-basic.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@kms_dsc@dsc-basic.html
    - bat-rplp-1:         [SKIP][155] ([i915#3555] / [i915#3840]) -> [SKIP][156] ([i915#11190])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_dsc@dsc-basic.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_dsc@dsc-basic.html
    - fi-cfl-8109u:       [SKIP][157] -> [SKIP][158] ([i915#11190]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html
    - fi-skl-6600u:       [SKIP][159] -> [SKIP][160] ([i915#11190]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
    - bat-twl-2:          [SKIP][161] ([i915#9886]) -> [SKIP][162] ([i915#11190])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_dsc@dsc-basic.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_dsc@dsc-basic.html
    - bat-mtlp-9:         [SKIP][163] ([i915#3555] / [i915#3840] / [i915#9159]) -> [SKIP][164] ([i915#11190])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
    - bat-mtlp-8:         [SKIP][165] ([i915#3555] / [i915#3840] / [i915#9159]) -> [SKIP][166] ([i915#11190])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          [SKIP][167] ([i915#3555] / [i915#9886]) -> [SKIP][168] ([i915#11190])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_dsc@dsc-basic.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_dsc@dsc-basic.html
    - bat-arlh-3:         [SKIP][169] ([i915#9886]) -> [SKIP][170] ([i915#11190])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_dsc@dsc-basic.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-mtlp-9:         [SKIP][171] ([i915#4077] / [i915#9688]) -> [SKIP][172] ([i915#1072] / [i915#9732])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
    - bat-mtlp-8:         [SKIP][173] ([i915#4077] / [i915#9688]) -> [SKIP][174] ([i915#1072] / [i915#9732])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14564]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14564
  [i915#15099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15099
  [i915#15205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_17857 -> Patchwork_152804v3

  CI-20190529: 20190529
  CI_DRM_17857: cee03fb98c51b597d51379b308eabee23db0954e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8709: 16ce286cac6acc9669a1c758572ae9fceb483c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_152804v3: cee03fb98c51b597d51379b308eabee23db0954e @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/index.html

--===============5186441787983618509==
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
<tr><td><b>Series:</b></td><td>Account for DSC bubble overhead for horizontal slices (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152804/">https://patchwork.freedesktop.org/series/152804/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17857 -&gt; Patchwork_152804v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152804v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152804v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152804v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@fbdev@eof.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@fbdev@nullptr.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-glk-j4005/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-glk-j4005/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@psr-primary-mmap-gtt:<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637">i915#12637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152804v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@fbdev@eof.html">SKIP</a> +9 other tests skip</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@fbdev@eof.html">SKIP</a> +9 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +3 other tests skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345">i915#11345</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> +9 other tests skip</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15099">i915#15099</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15099">i915#15099</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205">i915#15205</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +14 other tests skip</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_psr@psr-sprite-plane-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arls-5/igt@i915_selftest@live.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arls-5/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arls-5/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14564">i915#14564</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arls-5/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-apl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-apl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +3 other tests skip</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +3 other tests skip</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-twl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-twl-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-arlh-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-arlh-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17857/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v3/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17857 -&gt; Patchwork_152804v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17857: cee03fb98c51b597d51379b308eabee23db0954e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8709: 16ce286cac6acc9669a1c758572ae9fceb483c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_152804v3: cee03fb98c51b597d51379b308eabee23db0954e @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5186441787983618509==--
