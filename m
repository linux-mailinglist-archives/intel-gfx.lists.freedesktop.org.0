Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F6915BA0F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 08:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8F86E17D;
	Thu, 13 Feb 2020 07:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C19366E17D;
 Thu, 13 Feb 2020 07:28:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B11CFA011A;
 Thu, 13 Feb 2020 07:28:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rafael Antognolli" <rafael.antognolli@intel.com>
Date: Thu, 13 Feb 2020 07:28:55 -0000
Message-ID: <158157893569.17962.18044823380619038236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212191728.25227-1-rafael.antognolli@intel.com>
In-Reply-To: <20200212191728.25227-1-rafael.antognolli@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1808121037_to_tgl=2E?=
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

Series: drm/i915/tgl: Add Wa_1808121037 to tgl.
URL   : https://patchwork.freedesktop.org/series/73379/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16550
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/index.html

Known issues
------------

  Here are the changes found in Patchwork_16550 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [PASS][1] -> [INCOMPLETE][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([fdo#111096] / [i915#323])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         [INCOMPLETE][7] ([i915#937]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (45 -> 41)
------------------------------

  Additional (6): fi-skl-6770hq fi-bdw-gvtdvm fi-glk-dsi fi-bsw-kefka fi-kbl-7560u fi-kbl-r 
  Missing    (10): fi-kbl-soraka fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-blb-e6850 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16550

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16550: 311bb8e099cc5b1119247fbf73e1499d52c691f2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

311bb8e099cc drm/i915/tgl: Add Wa_1808121037 to tgl.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
