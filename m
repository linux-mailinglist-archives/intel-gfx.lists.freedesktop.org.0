Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97794293379
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 05:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBF96EC02;
	Tue, 20 Oct 2020 03:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C34176EC02;
 Tue, 20 Oct 2020 03:13:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8A70A41FB;
 Tue, 20 Oct 2020 03:13:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 20 Oct 2020 03:13:01 -0000
Message-ID: <160316358171.24451.4056406864834684120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915=3A_Drop_one_more_usless_ma?=
 =?utf-8?q?ster=5Ftranscoder_assignment?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============2055787755=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2055787755==
Content-Type: multipart/alternative;
 boundary="===============3986139555866760692=="

--===============3986139555866760692==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915: Drop one more usless master_transcoder assignment
URL   : https://patchwork.freedesktop.org/series/82848/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9165_full -> Patchwork_18737_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18737_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18737_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18737_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl1/igt@gem_exec_whisper@basic-queues-priority-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl1/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb8/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-no-display:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb3/igt@i915_module_load@reload-no-display.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
    - shard-tglb:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb8/igt@i915_pm_dc@dc5-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@perf:
    - shard-tglb:         NOTRUN -> [FAIL][11] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb8/igt@i915_selftest@perf.html
    - shard-iclb:         NOTRUN -> [FAIL][12] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@i915_selftest@perf.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> ([FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34]) ([i915#1580] / [i915#1814] / [i915#2292] / [i915#2439] / [k.org#204565])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb2/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb8/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb3/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb2/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> ([FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54], [FAIL][55], [FAIL][56]) ([i915#1602] / [i915#1759] / [i915#1814] / [i915#1852] / [i915#2045] / [i915#2248] / [i915#2292] / [i915#2439] / [i915#402] / [i915#456] / [k.org#204565])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb3/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb8/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb8/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb3/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb8/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb8/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb3/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-tglb:         [DMESG-WARN][57] ([i915#2411]) -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:
    - shard-tglb:         [DMESG-WARN][59] ([i915#2411]) -> [SKIP][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html

  
Known issues
------------

  Here are the changes found in Patchwork_18737_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-iclb:         [PASS][61] -> [INCOMPLETE][62] ([i915#1373]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-skl:          [PASS][63] -> [DMESG-WARN][64] ([i915#1982]) +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl7/igt@gem_exec_flush@basic-wb-prw-default.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl3/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-iclb:         [PASS][65] -> [INCOMPLETE][66] ([i915#1185]) +7 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb1/igt@gem_exec_suspend@basic-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [PASS][67] -> [DMESG-WARN][68] ([i915#118] / [i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-glk8/igt@gem_exec_whisper@basic-contexts.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-iclb:         [PASS][69] -> [INCOMPLETE][70] ([i915#926])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][71] -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#579])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb7/igt@i915_pm_rpm@basic-rte.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb8/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([i915#579]) +10 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb4/igt@i915_pm_rpm@system-suspend-devices.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb3/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_3d:
    - shard-tglb:         [PASS][77] -> [DMESG-WARN][78] ([i915#402])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb6/igt@kms_3d.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb6/igt@kms_3d.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-apl:          [PASS][79] -> [DMESG-WARN][80] ([i915#1635] / [i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-apl8/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-apl7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-snb:          [PASS][81] -> [FAIL][82] ([i915#54])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-snb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-snb4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#79])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-iclb:         [PASS][85] -> [INCOMPLETE][86] ([i915#2483])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#2122])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#2122])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-glk9/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-glk2/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][91] -> [DMESG-WARN][92] ([i915#1982]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [PASS][93] -> [INCOMPLETE][94] ([i915#1185] / [i915#123])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-iclb:         [PASS][95] -> [INCOMPLETE][96] ([i915#1185] / [i915#1373])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb8/igt@kms_hdr@bpc-switch-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][97] -> [INCOMPLETE][98] ([i915#1185] / [i915#250])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [PASS][99] -> [INCOMPLETE][100] ([i915#648])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([fdo#108145] / [i915#265])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([fdo#109441])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-iclb:         [PASS][105] -> [INCOMPLETE][106] ([i915#1078] / [i915#1185])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([fdo#109278]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-iclb:         [PASS][109] -> [INCOMPLETE][110] ([fdo#111764] / [i915#1185])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][111] -> [FAIL][112] ([i915#1542])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl2/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl6/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [FAIL][113] ([i915#2389]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][115] ([i915#118] / [i915#95]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [FAIL][117] ([i915#454]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][119] ([i915#2521]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-b:
    - shard-kbl:          [DMESG-WARN][121] ([i915#62]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-b.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-kbl4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-b.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][123] ([i915#118] / [i915#95]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:
    - shard-skl:          [DMESG-WARN][125] ([i915#1982]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][127] ([i915#2122]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][129] ([i915#2122]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][131] ([i915#1982]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [DMESG-WARN][133] ([i915#1982]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-glk7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-glk9/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][135] ([i915#198]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-apl:          [DMESG-WARN][137] ([i915#1635] / [i915#1982]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-apl4/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-apl2/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][139] ([fdo#109441]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [DMESG-WARN][141] ([i915#2411]) -> [INCOMPLETE][142] ([i915#1436] / [i915#2411]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb2/igt@gem_exec_suspend@basic-s3.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-tglb:         [DMESG-WARN][143] ([i915#2411]) -> [FAIL][144] ([i915#579])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb3/igt@i915_pm_rpm@basic-rte.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         [SKIP][145] ([fdo#111644] / [i915#1397] / [i915#2411]) -> [SKIP][146] ([i915#579]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-iclb:         [SKIP][147] ([fdo#110892]) -> [SKIP][148] ([i915#579]) +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         [SKIP][149] ([fdo#109293] / [fdo#109506]) -> [SKIP][150] ([i915#579]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-iclb1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@i2c:
    - shard-tglb:         [DMESG-WARN][151] ([i915#2411]) -> [SKIP][152] ([i915#579]) +9 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb1/igt@i915_pm_rpm@i2c.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         [SKIP][153] ([fdo#109506] / [i915#2411]) -> [SKIP][154] ([i915#579]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][155] ([fdo#110321] / [fdo#110336] / [i915#1635]) -> [TIMEOUT][156] ([i915#1319] / [i915#1635])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][157] ([i915#1319] / [i915#1635]) -> [FAIL][158] ([fdo#110321] / [fdo#110336] / [i915#1635])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-apl4/igt@kms_content_protection@legacy.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [DMESG-WARN][159] ([i915#1982]) -> [DMESG-FAIL][160] ([i915#1982])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [DMESG-WARN][161] ([i915#2411]) -> [INCOMPLETE][162] ([i915#1436] / [i915#2411] / [i915#456]) +7 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb1/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb8/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-snb:          [INCOMPLETE][163] ([i915#82]) -> [FAIL][164] ([i915#2546])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglb:         [DMESG-WARN][165] ([i915#2411]) -> [INCOMPLETE][166] ([i915#1373] / [i915#1436] / [i915#2411])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb3/igt@kms_hdr@bpc-switch-suspend.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [DMESG-WARN][167] ([i915#2411]) -> [INCOMPLETE][168] ([i915#1436] / [i915#1798] / [i915#1982] / [i915#456]) +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-tglb:         [DMESG-WARN][169] ([i915#2411]) -> [INCOMPLETE][170] ([i915#1436] / [i915#1982])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9165/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [DMESG-WARN][171] (

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/index.html

--===============3986139555866760692==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915: Drop on=
e more usless master_transcoder assignment</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/82848/">https://patchwork.freedesktop.org/series/82848/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18737/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18737/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9165_full -&gt; Patchwork_18737_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18737_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18737_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18737_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl1/igt@gem_exec_whisper@basic-queues-priority-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-skl1/igt@gem_exec_whisper@basic-queues-priority-all.html">F=
AIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb8/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tg=
lb7/igt@i915_module_load@reload.html">INCOMPLETE</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb3/igt@i915_module_load@reload-no-display.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_187=
37/shard-iclb1/igt@i915_module_load@reload-no-display.html">INCOMPLETE</a> =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-dpms:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9165/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/i=
gt@i915_pm_dc@dc5-dpms.html">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9165/shard-tglb8/igt@i915_pm_dc@dc5-dpms.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/i=
gt@i915_pm_dc@dc5-dpms.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18737/shard-tglb8/igt@i915_selftest@perf.html">FAIL<=
/a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18737/shard-iclb4/igt@i915_selftest@perf.html">FAIL<=
/a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18737/shard-iclb2/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard=
-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18737/shard-iclb8/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/=
shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8737/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb3/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18737/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb2/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18737/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18737/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-icl=
b4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18737/shard-iclb1/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shar=
d-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737=
/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb4/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18737/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb6/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1580] / [i915#1814] / [i915#2292] / [i915#2439] / =
[k.org#204565])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard=
-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/=
shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8737/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18737/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18737/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tgl=
b2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shar=
d-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737=
/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18737/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1602] / [i915#1759] / [i915#1814] / [i915#1852] / =
[i915#2045] / [i915#2248] / [i915#2292] / [i915#2439] / [i915#402] / [i915#=
456] / [k.org#204565])</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18737/shard-tglb5/igt@gem_ctx_isolation@preservation-s=
3@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.=
html">DMESG-WARN</a> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18737/shard-tglb3/igt@kms_vblank@pipe-b-ts-cont=
inuation-modeset-rpm.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18737_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18737/shard-iclb1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPL=
ETE</a> ([i915#1373]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl7/igt@gem_exec_flush@basic-wb-prw-default.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_187=
37/shard-skl3/igt@gem_exec_flush@basic-wb-prw-default.html">DMESG-WARN</a> =
([i915#1982]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-=
iclb5/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#1185]) +7 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-glk9/igt@gem_exec_whisper@basic-contexts.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/s=
hard-glk8/igt@gem_exec_whisper@basic-contexts.html">DMESG-WARN</a> ([i915#1=
18] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18737/shard-iclb7/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> ([i915#926])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb5/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb7/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-iclb=
8/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb4/igt@i915_pm_rpm@system-suspend-devices.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_187=
37/shard-iclb3/igt@i915_pm_rpm@system-suspend-devices.html">SKIP</a> ([i915=
#579]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb6/igt@kms_3d.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb6/igt@kms_3d.ht=
ml">DMESG-WARN</a> ([i915#402])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-apl8/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1873=
7/shard-apl7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">DMESG-WARN</a> ([=
i915#1635] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-snb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untile=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18737/shard-snb4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-unt=
iled.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18737/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb2/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/=
shard-iclb4/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> ([i915=
#2483])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18737/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-glk9/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18737/shard-glk2/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html">FAIL</a> =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pr=
i-indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@kms_frontbuffer_tracking@fbc=
psr-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> ([i915#1982]) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8737/shard-iclb8/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE<=
/a> ([i915#1185] / [i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard=
-iclb7/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i915#1185] / [=
i915#1373])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9165/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18737/shard-iclb1/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend-pipe-a-planes.html">INCOMPLETE</a> ([i915#1185] / [i915#250])</=
p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9165/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pip=
e-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18737/shard-skl10/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-a-planes.html">INCOMPLETE</a> ([i915#648])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">F=
AIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-ic=
lb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-iclb5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">I=
NCOMPLETE</a> ([i915#1078] / [i915#1185])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18737/shard-iclb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html"=
>SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">I=
NCOMPLETE</a> ([fdo#111764] / [i915#1185])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl2/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-=
skl6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">FA=
IL</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18737/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html">DMESG-W=
ARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18737/shard-glk8/igt@gem_exec_whisper@basic-forke=
d-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl9/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/s=
hard-skl6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18737/shard-kbl6/igt@kms_async_flips@async-flip-wit=
h-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe=
-b:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transit=
ion-fencing@dp-1-pipe-b.html">DMESG-WARN</a> ([i915#62]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-kbl4/igt@kms_=
atomic_transition@plane-all-modeset-transition-fencing@dp-1-pipe-b.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-=
FAIL</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18737/shard-glk6/igt@kms_big_fb@linear-32bpp-rot=
ate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtile=
d.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18737/shard-skl6/igt@kms_draw_crc@draw-method=
-xrgb8888-mmap-wc-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb6/igt@kms_flip@flip-vs-abs=
olute-wf_vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FA=
IL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18737/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-s=
hrfb-draw-mmap-gtt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@kms_fr=
ontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-glk7/igt@kms_frontbuffer_tracking@fbc-stridechange.html"=
>DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18737/shard-glk9/igt@kms_frontbuffer_tracking@fbc-st=
ridechange.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-skl8/igt@kms_plane@plane=
-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-256:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-apl4/igt@kms_plane_cursor@pipe-a-primary-size-256.html">=
DMESG-WARN</a> ([i915#1635] / [i915#1982]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-apl2/igt@kms_plane_cursor@p=
ipe-a-primary-size-256.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a>=
 ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18737/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</=
a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb2/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a>=
 ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18737/shard-tglb1/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a=
> ([i915#1436] / [i915#2411]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb3/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> ([i=
915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18737/shard-tglb7/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9165/shard-tglb6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP=
</a> ([fdo#111644] / [i915#1397] / [i915#2411]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-tglb6/igt@i915_pm_rpm@=
dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#579]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9165/shard-iclb4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP=
</a> ([fdo#110892]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18737/shard-iclb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.htm=
l">SKIP</a> ([i915#579]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-iclb1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP<=
/a> ([fdo#109293] / [fdo#109506]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18737/shard-iclb8/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> ([i915#579]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb1/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> ([i915#24=
11]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
737/shard-tglb7/igt@i915_pm_rpm@i2c.html">SKIP</a> ([i915#579]) +9 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html"=
>SKIP</a> ([fdo#109506] / [i915#2411]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18737/shard-tglb5/igt@i915_pm_rpm@modeset-p=
c8-residency-stress.html">SKIP</a> ([i915#579]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-apl7/igt@kms_content_protection@atomic-dpms.html">FAIL</=
a> ([fdo#110321] / [fdo#110336] / [i915#1635]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18737/shard-apl8/igt@kms_content_pr=
otection@atomic-dpms.html">TIMEOUT</a> ([i915#1319] / [i915#1635])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-apl4/igt@kms_content_protection@legacy.html">TIMEOUT</a>=
 ([i915#1319] / [i915#1635]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18737/shard-apl4/igt@kms_content_protection@legacy.ht=
ml">FAIL</a> ([fdo#110321] / [fdo#110336] / [i915#1635])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">D=
MESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18737/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-=
atomic.html">DMESG-FAIL</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb1/igt@kms_flip@flip-vs-suspend@a-edp1.html">DMESG-WA=
RN</a> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18737/shard-tglb8/igt@kms_flip@flip-vs-suspend@a-edp1.html">I=
NCOMPLETE</a> ([i915#1436] / [i915#2411] / [i915#456]) +7 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-snb5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.ht=
ml">INCOMPLETE</a> ([i915#82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18737/shard-snb5/igt@kms_frontbuffer_tracking@fbc-m=
odesetfrombusy.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18737/shard-tglb5/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE<=
/a> ([i915#1373] / [i915#1436] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">DMESG-WARN</a> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18737/shard-tglb1/igt@kms_pipe_crc_basic@suspend-r=
ead-crc-pipe-c.html">INCOMPLETE</a> ([i915#1436] / [i915#1798] / [i915#1982=
] / [i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9165/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.htm=
l">DMESG-WARN</a> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18737/shard-tglb2/igt@kms_pipe_crc_basic@suspend-r=
ead-crc-pipe-d.html">INCOMPLETE</a> ([i915#1436] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         [DMESG-WARN][171] (</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3986139555866760692==--

--===============2055787755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2055787755==--
