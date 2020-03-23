Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEBA18FB4E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 18:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324D06E379;
	Mon, 23 Mar 2020 17:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BD606E379;
 Mon, 23 Mar 2020 17:20:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 138F3A00C7;
 Mon, 23 Mar 2020 17:20:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khor, Swee Aun" <swee.aun.khor@intel.com>
Date: Mon, 23 Mar 2020 17:20:40 -0000
Message-ID: <158498404005.9808.10461425718891302441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318113009.16757-1-uma.shankar@intel.com>
In-Reply-To: <20200318113009.16757-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Trigger_Modeset_at_boot_for_audio_codec_init_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/display: Trigger Modeset at boot for audio codec init (rev2)
URL   : https://patchwork.freedesktop.org/series/74828/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8180 -> Patchwork_17056
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/index.html

Known issues
------------

  Here are the changes found in Patchwork_17056 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][1] -> [DMESG-WARN][2] ([IGT#4])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][3] -> [FAIL][4] ([i915#217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][5] ([fdo#103927] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][7] ([i915#481]) -> [DMESG-FAIL][8] ([i915#943])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (40 -> 43)
------------------------------

  Additional (10): fi-bdw-5557u fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8180 -> Patchwork_17056

  CI-20190529: 20190529
  CI_DRM_8180: 257af0ddcea3a234dcb79579600f971edd47353f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5530: 2020d743940f06294d06006bb737be43fcd2881e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17056: 0db59c6d9bd50ac3f03b40c76535eac49d25adb2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0db59c6d9bd5 drm/i915/display: Trigger Modeset at boot for audio codec init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
