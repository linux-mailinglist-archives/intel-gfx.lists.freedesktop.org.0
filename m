Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E267C14614E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 06:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C49D6F9A7;
	Thu, 23 Jan 2020 05:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBA996F9A7;
 Thu, 23 Jan 2020 05:19:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C26EDA0138;
 Thu, 23 Jan 2020 05:19:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 23 Jan 2020 05:19:26 -0000
Message-ID: <157975676676.1144.4632486260077934485@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123002415.31478-1-manasi.d.navare@intel.com>
In-Reply-To: <20200123002415.31478-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dp=3A_Do_not_set_master=5F?=
 =?utf-8?q?trans_bit_in_bitmak_if_INVALID=5FTRANSCODER?=
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

Series: series starting with [1/2] drm/i915/dp: Do not set master_trans bit in bitmak if INVALID_TRANSCODER
URL   : https://patchwork.freedesktop.org/series/72435/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7799 -> Patchwork_16224
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16224 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16224, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16224:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16224 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][4] -> [INCOMPLETE][5] ([i915#671])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][6] -> [INCOMPLETE][7] ([i915#671])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([fdo#111407])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][10] ([i915#45]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][12] ([i915#505] / [i915#671]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][14] ([i915#553] / [i915#725]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (50 -> 42)
------------------------------

  Additional (2): fi-glk-dsi fi-ilk-650 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-kbl-x1275 fi-bdw-samus fi-icl-dsi fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7799 -> Patchwork_16224

  CI-20190529: 20190529
  CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16224: 6f283f131d51ee27fef97019d96833a011247b3f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6f283f131d51 drm/i915/dp: Modeset only the tiled connectors with CRTC
e79c35cfb8ba drm/i915/dp: Do not set master_trans bit in bitmak if INVALID_TRANSCODER

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16224/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
