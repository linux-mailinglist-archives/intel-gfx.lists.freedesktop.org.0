Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A08A18B082
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591836E9C9;
	Thu, 19 Mar 2020 09:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C582C6E9C8;
 Thu, 19 Mar 2020 09:52:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE379A432F;
 Thu, 19 Mar 2020 09:52:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 09:52:02 -0000
Message-ID: <158461152275.17935.3617603137969451766@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319081456.9218-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319081456.9218-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Prefer_=27=25ps=27_for_?=
 =?utf-8?q?printing_function_symbol_names_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915: Prefer '%ps' for printing function symbol names (rev2)
URL   : https://patchwork.freedesktop.org/series/74864/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8157 -> Patchwork_17021
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/index.html

Known issues
------------

  Here are the changes found in Patchwork_17021 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][1] ([i915#189]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][3] ([i915#323]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-soraka:      [FAIL][5] ([IGT#5]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323


Participating hosts (41 -> 40)
------------------------------

  Additional (2): fi-skl-lmem fi-bwr-2160 
  Missing    (3): fi-byt-squawks fi-ehl-1 fi-bsw-cyan 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8157 -> Patchwork_17021

  CI-20190529: 20190529
  CI_DRM_8157: 4f297a639d15ec6c293b74ff0904de6146b18e4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17021: a8127f1ca9e3175868fa53da440c5bd88261f3a0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a8127f1ca9e3 drm/i915/gem: Wait until the context is finally retired before releasing engines
e5dfe0a1b939 drm/i915/execlists: Force single submission for sentinels
8c607ce297db drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
46267b8160d6 drm/i915: Prefer '%ps' for printing function symbol names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
