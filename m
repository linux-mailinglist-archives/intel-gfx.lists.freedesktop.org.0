Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D1F15B8CC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 06:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DCF6EB2F;
	Thu, 13 Feb 2020 05:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AF786EB2F;
 Thu, 13 Feb 2020 05:10:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23855A0078;
 Thu, 13 Feb 2020 05:10:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 13 Feb 2020 05:10:16 -0000
Message-ID: <158157061611.17960.12745537689432868539@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212160434.6437-1-jani.nikula@intel.com>
In-Reply-To: <20200212160434.6437-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_MAINTAINERS=3A_Update_drm/i915_bug_?=
 =?utf-8?q?filing_URL?=
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

Series: series starting with [1/2] MAINTAINERS: Update drm/i915 bug filing URL
URL   : https://patchwork.freedesktop.org/series/73371/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16546
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/index.html

Known issues
------------

  Here are the changes found in Patchwork_16546 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][5] ([fdo#109271]) -> [FAIL][6] ([i915#579])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (45 -> 46)
------------------------------

  Additional (7): fi-hsw-peppy fi-skl-6770hq fi-bdw-gvtdvm fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-kbl-r 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16546

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16546: 63e6a1c6ccf1cf204f06b5e61c0a3b702d0bb004 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

63e6a1c6ccf1 drm/i915: Update drm/i915 bug filing URL
f7eef1bd93b5 MAINTAINERS: Update drm/i915 bug filing URL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
