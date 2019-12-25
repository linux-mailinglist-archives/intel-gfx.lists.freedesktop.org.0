Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E795C12A845
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 14:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB84189BF0;
	Wed, 25 Dec 2019 13:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41A9589BB0;
 Wed, 25 Dec 2019 13:47:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CFD7A0BA8;
 Wed, 25 Dec 2019 13:47:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Dec 2019 13:47:22 -0000
Message-ID: <157728164224.4281.10001608763514885638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191225130800.2428793-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191225130800.2428793-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Ignore_stale_context?=
 =?utf-8?q?_state_upon_resume?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/3] drm/i915/gt: Ignore stale context state upon resume
URL   : https://patchwork.freedesktop.org/series/71378/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7634 -> Patchwork_15922
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15922 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15922, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15922:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-hsw-4770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-hsw-4770/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-hsw-4770/igt@core_auth@basic-auth.html
    - fi-byt-j1900:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-byt-j1900/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-byt-j1900/igt@core_auth@basic-auth.html
    - fi-pnv-d510:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-pnv-d510/igt@core_auth@basic-auth.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-pnv-d510/igt@core_auth@basic-auth.html
    - fi-snb-2520m:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-snb-2520m/igt@core_auth@basic-auth.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-snb-2520m/igt@core_auth@basic-auth.html
    - fi-byt-n2820:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-byt-n2820/igt@core_auth@basic-auth.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-byt-n2820/igt@core_auth@basic-auth.html
    - fi-elk-e7500:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-elk-e7500/igt@core_auth@basic-auth.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-elk-e7500/igt@core_auth@basic-auth.html
    - fi-ilk-650:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-ilk-650/igt@core_auth@basic-auth.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-ilk-650/igt@core_auth@basic-auth.html
    - fi-hsw-peppy:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-hsw-peppy/igt@core_auth@basic-auth.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-hsw-peppy/igt@core_auth@basic-auth.html
    - fi-hsw-4770r:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-hsw-4770r/igt@core_auth@basic-auth.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-hsw-4770r/igt@core_auth@basic-auth.html
    - fi-gdg-551:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-gdg-551/igt@core_auth@basic-auth.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-gdg-551/igt@core_auth@basic-auth.html

  * igt@gem_sync@basic-store-each:
    - fi-skl-guc:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-skl-guc/igt@gem_sync@basic-store-each.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-skl-guc/igt@gem_sync@basic-store-each.html
    - fi-glk-dsi:         [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-glk-dsi/igt@gem_sync@basic-store-each.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-glk-dsi/igt@gem_sync@basic-store-each.html

  * igt@gem_wait@basic-busy-all:
    - fi-bwr-2160:        NOTRUN -> [FAIL][25] +11 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-bwr-2160/igt@gem_wait@basic-busy-all.html

  * igt@gem_wait@basic-wait-all:
    - fi-bwr-2160:        NOTRUN -> [TIMEOUT][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-bwr-2160/igt@gem_wait@basic-wait-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         NOTRUN -> [DMESG-WARN][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][29] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-hsw-4770r/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-byt-n2820/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-hsw-4770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-elk-e7500/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6600u:       [INCOMPLETE][39] ([i915#671] / [i915#69]) -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  
Known issues
------------

  Here are the changes found in Patchwork_15922 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][41] -> [FAIL][42] ([fdo#103375])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_sync@basic-store-each:
    - fi-apl-guc:         [PASS][43] -> [INCOMPLETE][44] ([fdo#103927])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-apl-guc/igt@gem_sync@basic-store-each.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-apl-guc/igt@gem_sync@basic-store-each.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-soraka:      [PASS][45] -> [DMESG-FAIL][46] ([i915#541])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-kbl-soraka/igt@i915_selftest@live_gt_heartbeat.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-kbl-soraka/igt@i915_selftest@live_gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][47] ([fdo#111764]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][49] ([i915#178]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [DMESG-WARN][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][53] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][54] ([i915#62] / [i915#92]) +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][55] ([i915#62] / [i915#92]) -> [DMESG-WARN][56] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7634/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 40)
------------------------------

  Additional (5): fi-cfl-guc fi-bwr-2160 fi-kbl-7500u fi-whl-u fi-skl-6700k2 
  Missing    (9): fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bsw-kefka fi-blb-e6850 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7634 -> Patchwork_15922

  CI-20190529: 20190529
  CI_DRM_7634: a20d8cd6901aec154de1c0800d5a7f17d43c5b1e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15922: e91e3cba796534f7cf03d31ce27b778fd7900918 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e91e3cba7965 drm/i915/gt: Restore coarse power gating for gen9
4dd3485221af drm/i915/gt: Discard stale context state from across idling
f5a68faf90c3 drm/i915/gt: Ignore stale context state upon resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15922/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
