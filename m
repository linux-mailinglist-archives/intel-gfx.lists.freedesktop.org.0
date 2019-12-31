Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D113C12DB2C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 20:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3524989C97;
	Tue, 31 Dec 2019 19:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64DF289C85;
 Tue, 31 Dec 2019 19:36:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55E15A0019;
 Tue, 31 Dec 2019 19:36:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 31 Dec 2019 19:36:52 -0000
Message-ID: <157782101232.26888.13602514328058298603@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191226174636.244584-1-matthew.d.roper@intel.com>
In-Reply-To: <20191226174636.244584-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Wa=5F1407352427=3Aicl=2Cehl_=28rev4=29?=
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

Series: drm/i915: Add Wa_1407352427:icl,ehl (rev4)
URL   : https://patchwork.freedesktop.org/series/71403/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7659 -> Patchwork_15958
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/index.html

Known issues
------------

  Here are the changes found in Patchwork_15958 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#553] / [i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4] ([i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][5] -> [DMESG-FAIL][6] ([i915#722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-guc:         [PASS][7] -> [FAIL][8] ([i915#878])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-guc/igt@i915_selftest@live_gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-kbl-guc/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_requests:
    - fi-whl-u:           [PASS][9] -> [FAIL][10] ([i915#878])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-whl-u/igt@i915_selftest@live_requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-whl-u/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [INCOMPLETE][11] ([fdo#103927]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-8700k:       [INCOMPLETE][13] ([i915#505]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][15] ([i915#671]) -> [DMESG-WARN][16] ([i915#889])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [INCOMPLETE][18] ([i915#879])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][19] ([i915#770]) -> [DMESG-FAIL][20] ([i915#725])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 38)
------------------------------

  Additional (2): fi-skl-6770hq fi-skl-lmem 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7659 -> Patchwork_15958

  CI-20190529: 20190529
  CI_DRM_7659: bc7f03590ed801bb911de587835ff9547ae63fbc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5356: 62146738c68abfa7497b023a049163932f5a9aa0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15958: 6c29c9ffce2b1f70a4092de9514083d6a8c3a6b1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6c29c9ffce2b drm/i915: Add Wa_1407352427:icl,ehl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15958/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
