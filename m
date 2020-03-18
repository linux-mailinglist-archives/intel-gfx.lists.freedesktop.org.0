Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7DB18A78E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBEF86E891;
	Wed, 18 Mar 2020 22:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 932D66E891;
 Wed, 18 Mar 2020 22:05:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83DCFA0099;
 Wed, 18 Mar 2020 22:05:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 22:05:54 -0000
Message-ID: <158456915450.25099.8635973345439572459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Port_sync_for_skl+_=28rev3=29?=
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

Series: drm/i915: Port sync for skl+ (rev3)
URL   : https://patchwork.freedesktop.org/series/74691/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8154 -> Patchwork_17014
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/index.html

Known issues
------------

  Here are the changes found in Patchwork_17014 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-icl-dsi:         [PASS][1] -> [DMESG-FAIL][2] ([i915#765])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-dsi/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/fi-icl-dsi/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][5] -> [INCOMPLETE][6] ([fdo#103927] / [i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111407])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - {fi-tgl-dsi}:       [DMESG-FAIL][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-tgl-dsi/igt@i915_selftest@live@active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/fi-tgl-dsi/igt@i915_selftest@live@active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (47 -> 39)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (9): fi-ilk-m540 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8154 -> Patchwork_17014

  CI-20190529: 20190529
  CI_DRM_8154: 937a904e393752c47b8dfdeed993f04fd75af74d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17014: eea643cabc5fb832cbdffe3f04546c82dfd034a6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eea643cabc5f drm/i915: Move the port sync DP_TP_CTL stuff to the encoder hook
ba9ff9562959 drm/i915: Pass atomic state to encoder hooks
65906b744e8d drm/i915: Do pipe updates after enables for everyone
a85031aa5231 drm/i915: Fix port sync code to work with >2 pipes
ed313611cd9d drm/i915: Eliminate port sync copy pasta
2084e75f8c82 drm/i915: Implement port sync for SKL+
248ad2bd291b drm/i915: Store cpu_transcoder_mask in device info
e832ccd1183a drm/i915: Include port sync state in the state dump
6f316fb900f8 drm/i915: Use REG_FIELD_PREP() & co. for TRANS_DDI_FUNC_CTL2
aebcfc348cec drm/i915: Move icl_get_trans_port_sync_config() into the DDI code
7200689fa007 drm/i915: Drop usless master_transcoder assignments
0124ef44a60a drm/i915: Move TRANS_DDI_FUNC_CTL2 programming where it belongs
72dac032db0d drm/i915/mst: Use .compute_config_late() to compute master transcoder

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
